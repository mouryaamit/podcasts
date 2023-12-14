import { Inject, Injectable } from '@angular/core';
import { Meta, Title } from '@angular/platform-browser';
import { DOCUMENT } from '@angular/common';

@Injectable({
  providedIn: 'root',
})
export class MetaService {
  constructor(
    private title: Title,
    private meta: Meta,
    @Inject(DOCUMENT) private doc: any
  ) {}

  updateTitle(title: string) {
    this.title.setTitle(title);
  }

  updateDescription(desc: string) {
    this.meta.updateTag({ name: 'description', content: desc });
  }

  updateKeywords(keywords: string) {
    this.meta.updateTag({ name: 'keywords', content: keywords });
  }

  updateCanonicalLink() {
    let existingCanonicalLink = this.doc.querySelector('link[rel="canonical"]');

    // Remove existing canonical link
    if (existingCanonicalLink) {
      this.doc.head.removeChild(existingCanonicalLink);
    }

    // Create and add the new canonical link
    let canonicalLink: HTMLLinkElement = this.doc.createElement('link');
    canonicalLink.setAttribute('rel', 'canonical');
    canonicalLink.setAttribute('href', this.doc.URL);
    this.doc.head.appendChild(canonicalLink);
  }
}
