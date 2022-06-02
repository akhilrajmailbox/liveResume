import { Component, OnInit } from "@angular/core";
import { Meta, Title } from "@angular/platform-browser";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.css"]
})
export class AppComponent implements OnInit {

  title: string = "Live Resume - Akhil Raj";

  constructor(
    private titleService: Title,
    private metaTagService: Meta
  ) { }

  ngOnInit(): void {

    this.titleService.setTitle(this.title);

    this.metaTagService.addTags([
      { name: "keywords", content: "DevOps Engineer, Cloud Engineer, DevOps Architect, Cloud Architect, Akhil Raj Live Resume, Akhil Raj Resume, Akhil Raj CV, Curriculum Akhil Raj, Akhil Raj Niravathinal, akhil live resume" },
      { name: "robots", content: "index, follow" },
      { name: "author", content: "Akhil Raj" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      { name: "date", content: "2022-06-03", scheme: "YYYY-MM-DD" },
      { charset: "UTF-8" }
    ]);

    this.metaTagService.updateTag(
      { name: "description", content: "Hello, I'm a DevOps Architect with 6+ years of experience DevOps and Cloud projects. Find out more in my live-resume!" }
    );
  }
}
