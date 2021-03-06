# Beginner's guide to machine learning with Scikit-Learn
> Just like cloud computing ushered in the current explosion in startups … machine learning platforms will likely power the next generation of consumer and business tools.

We are living in a world where we are seeing vast advancements in ML and AI thanks to the **_democratization_ of machine learning**, a form of artificial intelligence that enables computers to learn from data, without being explicitly programmed. With numerous online resources available, one often suffers from _what right combination of tools to use to get started_. This project aims to take away that friction and get you started with machine learning in minutes.

### We will be using the following:
- [Scikit-Learn][scikit] is an open source machine learning library built on **NumPy, SciPy, and matplotlib** which provides powerful tools for data mining and data analysis.
- [Docker][docker] is an awesome tool that _you should have learnt yesterday_. It makes setting up the development environment a breeze.
- [Jupyter Notebook][jupyter] allows you to create and share documents that contain live code, equations, visualizations and explanatory text, right in your browser.

## To get started
- Install [Docker][docker-install]
- Clone this project
```bash
git clone git@github.com:sud218/ml-scikit-boilerplate.git
cd ml-scikit-boilerplate
```
- Run `make` and you are done!
```bash
make
```
You should see the following with the **link to your `notebook`**. Grab that link and paste into your browser. 

![installation-image]

Voila! You are ready to get started on machine learning.

Note: If you are running on cloud, replace the ip `0.0.0.0` in the above url to with your **`docker-ip`**. You can very easily get your **`docker-ip`** by running `make docker-ip`.

### What's next?
- Read [Scikit docs][scikit-docs] and explore different models and tools available.
- Create your own notebook!

---
_Facing trouble running? Please create an [issue][git-issue] and I will get back to you._

[scikit]: http://scikit-learn.org/stable/
[docker]: https://www.docker.com/what-docker
[jupyter]: http://jupyter.org/
[docker-install]: https://docs.docker.com/engine/installation/
[gl-api-key]: https://turi.com/download/academic.html
[installation-image]: https://i.imgur.com/I3YL63h.png
[scikit-docs]: http://scikit-learn.org/stable/documentation.html
[git-issue]: https://github.com/sud218/ml-scikit-boilerplate/issues
[jupyter-image]: https://i.imgur.com/v4JcLhI.png
