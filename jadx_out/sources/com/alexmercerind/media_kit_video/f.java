package com.alexmercerind.media_kit_video;

import io.flutter.view.TextureRegistry;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class f {

    /* renamed from: b, reason: collision with root package name */
    public final TextureRegistry f1323b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1322a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Object f1324c = new Object();

    public f(TextureRegistry textureRegistry) {
        this.f1323b = textureRegistry;
    }

    public void a(long j2, b bVar) {
        synchronized (this.f1324c) {
            try {
                String.format(Locale.ENGLISH, "com.alexmercerind.media_kit_video.VideoOutputManager.create: %d", Long.valueOf(j2));
                if (!this.f1322a.containsKey(Long.valueOf(j2))) {
                    this.f1322a.put(Long.valueOf(j2), new e(this.f1323b, bVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(long j2) {
        synchronized (this.f1324c) {
            try {
                String.format(Locale.ENGLISH, "com.alexmercerind.media_kit_video.VideoOutputManager.dispose: %d", Long.valueOf(j2));
                if (this.f1322a.containsKey(Long.valueOf(j2))) {
                    e eVar = (e) this.f1322a.get(Long.valueOf(j2));
                    Objects.requireNonNull(eVar);
                    eVar.c();
                    this.f1322a.remove(Long.valueOf(j2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c(long j2, int i2, int i3) {
        synchronized (this.f1324c) {
            try {
                String.format(Locale.ENGLISH, "com.alexmercerind.media_kit_video.VideoOutputManager.setSurfaceSize: %d %d %d", Long.valueOf(j2), Integer.valueOf(i2), Integer.valueOf(i3));
                if (this.f1322a.containsKey(Long.valueOf(j2))) {
                    e eVar = (e) this.f1322a.get(Long.valueOf(j2));
                    Objects.requireNonNull(eVar);
                    eVar.g(i2, i3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
