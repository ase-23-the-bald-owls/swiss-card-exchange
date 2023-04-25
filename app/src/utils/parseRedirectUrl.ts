import { ParsedUrlQuery } from 'querystring';

export function parseRedirectUrl(parsedUrlQuery?: ParsedUrlQuery | null) {
  if (!parsedUrlQuery) {
    return null;
  }
  const redirectUrl = parsedUrlQuery['redirectUrl'];
  if (!redirectUrl) {
    return null;
  }
  const url = Array.isArray(redirectUrl) ? redirectUrl[0] : redirectUrl;
  try {
    new URL(url);
    return null;
  } catch (e) {
    if (url.startsWith('/') || url.startsWith('..') || url.startsWith('.')) {
      return url;
    }
    return null;
  }
}
