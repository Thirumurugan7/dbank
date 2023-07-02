import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'Compound' : () => Promise<undefined>,
  'checkBalance' : () => Promise<number>,
  'decreMent' : (arg_0: number) => Promise<undefined>,
  'increMent' : (arg_0: number) => Promise<undefined>,
}
