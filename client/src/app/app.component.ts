import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Http } from '@angular/http';
import { FormsModule } from '@angular/forms';
import { Post } from './post';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {

  title = 'app';
  model = new Post();
  posts;

  constructor(private http: Http) {
    http.get('http://localhost:3000/posts').subscribe(res => this.posts = res.json());
  }
	save(){
		this.http.post('http://localhost:3000/posts',{post: this.model}).subscribe((data) => {})
	}
}
