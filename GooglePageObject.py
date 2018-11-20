# -*- coding: utf-8 -*-

from robot.libraries.BuiltIn import BuiltIn

locators = {
    "search": "xpath=//input[@class]",
    "search_button": "xpath=//input[@type='submit']",
    "result_stats": 'xpath=//h3'
}


def _seleniumlib():
    return BuiltIn().get_library_instance("Selenium2Library")


class GooglePageObject(object):

    def search(self, text):
        _seleniumlib().input_text(locators["search"], text)
        self._press_search_button()
        _seleniumlib().wait_until_page_contains_element(locators["result_stats"])

    def _press_search_button(self):
        _seleniumlib().click_element(locators["search_button"])

    def get_locators(self):
        return locators
