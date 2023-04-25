import { parseRedirectUrl } from '@/utils/parseRedirectUrl';

describe('parseRedirectUrls', () => {
  [null, undefined].forEach((value) => {
    it(`returns null if ParsedUrlQuery is ${value}`, () => {
      expect(parseRedirectUrl(value)).eq(null);
    });

    it('returns null if redirectUrl is not present', () => {
      expect(parseRedirectUrl({ bla: 'test' })).eq(null);
    });

    [
      {
        name: 'do not allow to redirect to other urls',
        redirectUrl: 'http://google.com',
      },
      {
        name: 'not allow invalid urls',
        redirectUrl: 'bla',
      },
    ].forEach((value) => {
      it(`returns null for invalid urls: ${JSON.stringify(value)}`, () => {
        expect(parseRedirectUrl(value)).eq(null);
      });
    });

    [
      {
        name: 'valid redirect',
        redirectUrl: '/profile',
      },
      {
        name: 'first element of array',
        redirectUrl: ['/profile'],
      },
      {
        name: 'redirect with query parameters',
        redirectUrl: '/?pageNum=0&pageSize=10',
      },
      {
        name: 'redirect with relative url',
        redirectUrl: './billingAddress',
      },

      {
        name: 'redirect with relative url',
        redirectUrl: '../profile',
      },
    ].forEach((value) => {
      it(`returns redirect for valid url: ${JSON.stringify(value)}`, () => {
        const url = Array.isArray(value.redirectUrl)
          ? value.redirectUrl[0]
          : value.redirectUrl;
        expect(parseRedirectUrl(value)).eq(url);
      });
    });
  });
});
