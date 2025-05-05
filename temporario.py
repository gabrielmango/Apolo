from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException, TimeoutException
from selenium.webdriver.chrome.service import Service as ServicoChrome
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as CondicaoEsperada
from selenium.webdriver.support.ui import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager


class NavegadorWeb:
    _mapeamento_localizadores = {
        'id': By.ID,
        'classe': By.CLASS_NAME,
        'nome': By.NAME,
        'tag': By.TAG_NAME,
        'xpath': By.XPATH,
    }

    def __init__(
        self, url: str, espera_implicita: int = 2, modo_oculto: bool = False
    ) -> None:
        opcoes = webdriver.ChromeOptions()
        if modo_oculto:
            opcoes.add_argument('--headless')

        servico = ServicoChrome(ChromeDriverManager().install())
        self.navegador = webdriver.Chrome(service=servico, options=opcoes)
        self.navegador.implicitly_wait(espera_implicita)
        self.acessar_url(url)

    def _esperar_carregamento_pagina(self, tempo_limite: int = 15):
        """Espera até que o documento da página esteja totalmente carregado."""
        WebDriverWait(self.navegador, tempo_limite).until(
            lambda d: d.execute_script('return document.readyState')
            == 'complete'
        )

    def acessar_url(self, url: str):
        """Acessa uma URL e aguarda o carregamento completo da página."""
        self.navegador.get(url)
        self._esperar_carregamento_pagina()

    def fechar(self) -> None:
        self.navegador.quit()

    def _obter_localizador(self, estrategia: str):
        localizador = self._mapeamento_localizadores.get(estrategia.lower())
        if not localizador:
            raise ValueError(
                f"Estratégia de localização inválida: '{estrategia}'"
            )
        return localizador

    def buscar_elemento(
        self, estrategia: str, valor: str, retornar_texto: bool = False
    ):
        self._esperar_carregamento_pagina()
        try:
            elemento = self.navegador.find_element(
                self._obter_localizador(estrategia), valor
            )
            return elemento.text if retornar_texto else elemento
        except NoSuchElementException:
            print(f"[!] Elemento não encontrado: {estrategia}='{valor}'")
            return None

    def buscar_elementos(self, estrategia: str, valor: str):
        self._esperar_carregamento_pagina()
        return self.navegador.find_elements(
            self._obter_localizador(estrategia), valor
        )

    def clicar_em(self, estrategia: str, valor: str):
        self._esperar_carregamento_pagina()
        elemento = self.buscar_elemento(estrategia, valor)
        if elemento:
            elemento.click()

    def preencher_campo(self, estrategia: str, valor: str, texto: str):
        self._esperar_carregamento_pagina()
        elemento = self.buscar_elemento(estrategia, valor)
        if elemento:
            elemento.send_keys(texto)

    def obter_todos_links_por_tag(
        self, nome_tag: str = 'a', tempo_max_espera: int = 10
    ) -> dict:
        try:
            self._esperar_carregamento_pagina(tempo_max_espera)
            WebDriverWait(self.navegador, tempo_max_espera).until(
                CondicaoEsperada.presence_of_all_elements_located(
                    (By.TAG_NAME, nome_tag)
                )
            )
            elementos = self.buscar_elementos('tag', nome_tag)
            return {
                el.text.strip(): el.get_attribute('href')
                for el in elementos
                if el.get_attribute('href')
            }
        except TimeoutException:
            print('[!] Tempo de espera excedido ao buscar os links.')
            return {}
