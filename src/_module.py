from loguru import logger
import hostlib


def info(msg):
    logger.info(msg)


def warning(msg):
    logger.warning(msg)


def error(msg):
    logger.error(msg)


def critical(msg):
    logger.critical(msg)


def calc(a, b):
    return a * b + 100


def callnative(a, b):
    """这个函数由宿主提供"""
    return hostlib.hostfunc(a, b)
