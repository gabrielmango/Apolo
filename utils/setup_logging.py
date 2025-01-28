import logging
import os
from pathlib import Path


def setup_logging(nome):
    script_name = os.path.basename(nome)
    log_folder = 'logs'
    log_file = f'{log_folder}/{script_name}.log'

    if not os.path.exists(log_folder):
        os.makedirs(log_folder)

    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)s - %(message)s',
        handlers=[
            logging.FileHandler(log_file, encoding='utf-8'),
            logging.StreamHandler(),
        ],
    )
