import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'checkBalance' : () => Promise<bigint>,
  'decreMent' : (arg_0: bigint) => Promise<undefined>,
  'increMent' : (arg_0: bigint) => Promise<undefined>,
}
