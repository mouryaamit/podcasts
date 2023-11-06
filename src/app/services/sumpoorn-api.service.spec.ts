import { TestBed } from '@angular/core/testing';

import { SumpoornApiService } from './sumpoorn-api.service';

describe('SumpoornApiService', () => {
  let service: SumpoornApiService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(SumpoornApiService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
