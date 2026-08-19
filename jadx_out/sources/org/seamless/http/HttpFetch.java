package org.seamless.http;

import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import org.seamless.util.io.IO;

/* loaded from: classes5.dex */
public class HttpFetch {

    public interface RepresentationFactory<E> {
        Representation<E> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException;
    }

    public static <E> Representation<E> fetch(URL url, int i2, int i3, RepresentationFactory<E> representationFactory) throws IOException {
        return fetch(url, "GET", i2, i3, representationFactory);
    }

    public static Representation<byte[]> fetchBinary(URL url) throws IOException {
        return fetchBinary(url, 500, 500);
    }

    public static Representation<String> fetchString(URL url, int i2, int i3) throws IOException {
        return fetch(url, i2, i3, new RepresentationFactory<String>() { // from class: org.seamless.http.HttpFetch.2
            @Override // org.seamless.http.HttpFetch.RepresentationFactory
            public Representation<String> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation<>(uRLConnection, IO.readLines(inputStream));
            }
        });
    }

    public static void validate(URL url) throws Throwable {
        fetch(url, c.f37362a, 500, 500, new RepresentationFactory() { // from class: org.seamless.http.HttpFetch.3
            @Override // org.seamless.http.HttpFetch.RepresentationFactory
            public Representation createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation(uRLConnection, null);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <E> org.seamless.http.Representation<E> fetch(java.net.URL r2, java.lang.String r3, int r4, int r5, org.seamless.http.HttpFetch.RepresentationFactory<E> r6) throws java.lang.Throwable {
        /*
            r0 = 0
            java.net.URLConnection r2 = r2.openConnection()     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L25
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L25
            r2.setRequestMethod(r3)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            r2.setConnectTimeout(r4)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            r2.setReadTimeout(r5)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            java.io.InputStream r0 = r2.getInputStream()     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            org.seamless.http.Representation r2 = r6.createRepresentation(r2, r0)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            if (r0 == 0) goto L1d
            r0.close()
        L1d:
            return r2
        L1e:
            r2 = move-exception
            goto L49
        L20:
            r3 = move-exception
            r1 = r0
            r0 = r2
            r2 = r1
            goto L27
        L25:
            r3 = move-exception
            r2 = r0
        L27:
            if (r0 == 0) goto L48
            int r3 = r0.getResponseCode()     // Catch: java.lang.Throwable -> L44
            java.io.IOException r4 = new java.io.IOException     // Catch: java.lang.Throwable -> L44
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L44
            r5.<init>()     // Catch: java.lang.Throwable -> L44
            java.lang.String r6 = "Fetching resource failed, returned status code: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L44
            r5.append(r3)     // Catch: java.lang.Throwable -> L44
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L44
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L44
            throw r4     // Catch: java.lang.Throwable -> L44
        L44:
            r3 = move-exception
            r0 = r2
            r2 = r3
            goto L49
        L48:
            throw r3     // Catch: java.lang.Throwable -> L44
        L49:
            if (r0 == 0) goto L4e
            r0.close()
        L4e:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.seamless.http.HttpFetch.fetch(java.net.URL, java.lang.String, int, int, org.seamless.http.HttpFetch$RepresentationFactory):org.seamless.http.Representation");
    }

    public static Representation<byte[]> fetchBinary(URL url, int i2, int i3) throws IOException {
        return fetch(url, i2, i3, new RepresentationFactory<byte[]>() { // from class: org.seamless.http.HttpFetch.1
            @Override // org.seamless.http.HttpFetch.RepresentationFactory
            public Representation<byte[]> createRepresentation(URLConnection uRLConnection, InputStream inputStream) throws IOException {
                return new Representation<>(uRLConnection, IO.readBytes(inputStream));
            }
        });
    }
}
