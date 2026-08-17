package com.beizi.fusion;

/* loaded from: classes2.dex */
public class xi implements pc {

    /* renamed from: a, reason: collision with root package name */
    private final int f17457a;

    /* renamed from: b, reason: collision with root package name */
    private final String f17458b;

    public enum a implements pc {
        ERROR_UNEXPECTED(-99, "error unexpected"),
        ERROR_METHOD(com.sigmob.sdk.archives.tar.e.f35439E, "request method error"),
        ERROR_REDIRECT_LOOP(-97, "error redirect loop"),
        ERROR_INVALID_URL(-98, "error invalid request url");


        /* renamed from: a, reason: collision with root package name */
        private final int f17464a;

        /* renamed from: b, reason: collision with root package name */
        private final String f17465b;

        a(int i2, String str) {
            this.f17464a = i2;
            this.f17465b = str;
        }

        @Override // com.beizi.fusion.pc
        public String a() {
            return this.f17465b;
        }

        @Override // com.beizi.fusion.pc
        public int b() {
            return this.f17464a;
        }
    }

    public xi(int i2, String str) {
        this.f17457a = i2;
        this.f17458b = str;
    }

    @Override // com.beizi.fusion.pc
    public String a() {
        return this.f17458b;
    }

    @Override // com.beizi.fusion.pc
    public int b() {
        return this.f17457a;
    }
}
