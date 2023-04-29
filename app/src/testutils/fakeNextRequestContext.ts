import { GetServerSidePropsContext } from 'next';

export function createFakeNextRequestContext(): GetServerSidePropsContext {
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  return {};
}
