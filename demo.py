from us_visa.logger import logging
from us_visa.exception import CustomException
import sys

# logging.info("Welcome to custom logger")

try:
    a=2/0
except Exception as e:
    raise CustomException(e,sys)