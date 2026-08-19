package com.beizi.fusion;

import java.io.IOException;
import java.io.Writer;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class oo {
    public static void a(ig igVar, rg rgVar) {
        hp.f14381t.a(rgVar, igVar);
    }

    public static final class b extends Writer {

        /* renamed from: a, reason: collision with root package name */
        private final Appendable f15474a;

        /* renamed from: b, reason: collision with root package name */
        private final a f15475b = new a();

        public static class a implements CharSequence {

            /* renamed from: a, reason: collision with root package name */
            private char[] f15476a;

            /* renamed from: b, reason: collision with root package name */
            private String f15477b;

            private a() {
            }

            public void a(char[] cArr) {
                this.f15476a = cArr;
                this.f15477b = null;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i2) {
                return this.f15476a[i2];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f15476a.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i2, int i3) {
                return new String(this.f15476a, i2, i3 - i2);
            }

            @Override // java.lang.CharSequence
            public String toString() {
                if (this.f15477b == null) {
                    this.f15477b = new String(this.f15476a);
                }
                return this.f15477b;
            }
        }

        public b(Appendable appendable) {
            this.f15474a = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) throws IOException {
            this.f15475b.a(cArr);
            this.f15474a.append(this.f15475b, i2, i3 + i2);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence) throws IOException {
            this.f15474a.append(charSequence);
            return this;
        }

        @Override // java.io.Writer
        public void write(int i2) throws IOException {
            this.f15474a.append((char) i2);
        }

        @Override // java.io.Writer, java.lang.Appendable
        public Writer append(CharSequence charSequence, int i2, int i3) throws IOException {
            this.f15474a.append(charSequence, i2, i3);
            return this;
        }

        @Override // java.io.Writer
        public void write(String str, int i2, int i3) throws IOException {
            Objects.requireNonNull(str);
            this.f15474a.append(str, i2, i3 + i2);
        }
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new b(appendable);
    }
}
