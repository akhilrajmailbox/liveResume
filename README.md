<h1 align="center">
  <br>
  The Ultimate Personal Web Resume📃
  <br>
</h1>

## ⚓Prerequisite

1. It is required to have Node.js with version _12.18.0_ or higher. To see what version of Node.js is installed on your machine type the following command in the terminal:
```
node -v
```

2. If you haven't installed Node.js in your machine then go to [this link](https://nodejs.org/en/download/) in order to install node.

3. It is required to have NPM with version _6.14.0_ or higher. To see what version of NPM is installed on your machine type the following command in the terminal:
```
npm -v
```

4. If you haven't installed NPM in your machine then go to [this link](https://www.npmjs.com/get-npm) in order to install NPM.



## Create GitHub Pages Artefact

You can create the artefact with help of a preconfigured docker image

* Only Build the Artefact

```bash
docker run --rm -v /path/to/liveResume:/opt/liveResume -e BUILD_ENV="liveResume" --name myresume --hostname myresume akhilrajmailbox/live-resume:1.0.1 build
# Optional (If you need to move the artifacts to docs folder)
rm -rf ./docs ; mkdir ./docs
cp -r ./dist/liveResume/en/* ./docs/
```

* Build and Publish the Artefact (gh-pages)

**Assuming that the gh-page is serving from teh current branch under folder "docs"**

```bash
docker run --rm -v /path/to/liveResume:/opt/liveResume -e BUILD_ENV="liveResume" --name myresume --hostname myresume akhilrajmailbox/live-resume:1.0.1
```

## Reference

[Angular Apps to GitHub Pages](https://medium.com/tech-insights/how-to-deploy-angular-apps-to-github-pages-gh-pages-896c4e10f9b4)

[Angular Project to Github Pages](https://blog.bitsrc.io/deploy-your-angular-project-to-github-pages-7cbacb96f35b)

[Angular Icons](https://mdbootstrap.com/docs/angular/content/icons-list/)

[Icon Scout](https://iconscout.com/icons)

[Embedding raster image](https://bl.ocks.org/hugolpz/7a2e24688591887f75c3)

[Remove Image Background](https://www.remove.bg/)


## 📥 Installing and Executing locally

1. Clone the forked repository from your GitHub account.
```
git clone https://github.com/[replace-with-your-github-username]/liveResume.git
```

2. Go to the cloned directory (e.g. `cd liveResume`).

3. Run `npm install`.

4. Inner the folder of the cloned project, start the application:
```
ng serve -o --host 0.0.0.0 --configuration en
```
**Note:** the optional parameters:
* `-o` aliases for opening the default browser as soon the application is served.
* ` --host 0.0.0.0` is useful if you want to see how your application runs on a mobile or from some other laptop/computer/network. 
* ` --configuration=en` in this example the application will be displayed in **en-US**, by replacing the `en`with `pt` => `--configuration=pt`, the application language would be **pt-BR**. 

5. After that, the command will start a server instance and listen on port `4200`. Open (http://localhost:4200/) in your browser. The **Live Resume** will be displayed.

> Please, feel free to make improvements, or any sort of changes and send it back via **pull request**. Your contribution is always welcome!

## 🖋 Contribute

Feel free to add new features, language supports, fix bugs, or improve the docs. Any kind of help is appreciated! If you make any kind of improvements, please, send them back as a **Pull Request**. Let's keep making it better and up-to-date.


## Credits©️

I cloned this repo from Guilherme's live-resume and customized with my data and ideas. Thanks `Guilherme` !.

- [Guilherme Borges Bastos](https://github.com/guilhermeborgesbastos/live-resume)

This project uses several open source packages:

- [Angular](https://github.com/angular)
- [Angular CLI](https://cli.angular.io)
- [Navigator Share](https://www.npmjs.com/package/ng-navigator-share)
- [Font Awesome](https://fontawesome.com)

---

> Site [https://www.akhilraj.xyz/](https://https://www.akhilraj.xyz/)<br>


## 📝 License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## How to create Tags for My Resume ?

* git tag v1.0.1

* git tag -l

* git push origin --tags