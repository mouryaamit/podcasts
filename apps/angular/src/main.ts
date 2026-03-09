// apps/angular/src/main.ts

import '../../../tools/scripts/csp-nonce-patch'; // This applies the nonce patch

import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './app/app.module';
import { environment } from './environments/environment';

console.log(
  'Last build timestamp is set to:',
  environment?.timeStamp
);
console.log('Last build branch is set to:', environment?.branchName);

platformBrowserDynamic()
  .bootstrapModule(AppModule)
  .catch((err) => console.error(err));
