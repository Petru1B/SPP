#!/bin/bash

echo "🔍 Analiză statică pentru proiect Flask"

echo "📦 Flake8 – verificare stil PEP8"
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
flake8 . --max-line-length=88

echo "📐 Mypy – verificare de tipuri statice"
mypy .

echo "🛡️ Safety – scanare vulnerabilități în pachete"
safety check

echo "🧠 Pylint – analiză generală și scor de calitate"
pylint app.py

echo "📊 Radon – complexitate ciclomatică"
radon cc . -s -a
