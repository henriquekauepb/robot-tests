*** Settings ***
Documentation    Gerenciador de Dependencias Global da Automação

# --- Biblioteccas Nativas
Library    SeleniumLibrary    screenshot_root_directory=EMBED
Library    String
Library    FakerLibrary    locale=pt_BR

# --- Utils
Resource    ../utils/setup.resource
Resource    ../utils/teardown.resource