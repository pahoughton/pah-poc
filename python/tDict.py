#!/usr/bin/env python3
# 2018-10-13 (cc) <paul4hough@gmail.com>

import yaml

def main():
    '''Application entry point
    '''

    pkgs = { 'python': { 'Ubuntu': ['a','b','c'],
                         'common': ['d','e','f'],
    } }

    print(pkgs['python'])

if __name__ == '__main__':
    main()
