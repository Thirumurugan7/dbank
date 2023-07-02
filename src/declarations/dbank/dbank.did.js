export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'Compound' : IDL.Func([], [], ['oneway']),
    'checkBalance' : IDL.Func([], [IDL.Float64], ['query']),
    'decreMent' : IDL.Func([IDL.Float64], [], ['oneway']),
    'increMent' : IDL.Func([IDL.Float64], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
