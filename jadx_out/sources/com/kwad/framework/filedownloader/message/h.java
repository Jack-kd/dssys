package com.kwad.framework.filedownloader.message;

import android.os.Parcel;
import com.kwad.framework.filedownloader.message.MessageSnapshot;

/* loaded from: classes4.dex */
public abstract class h extends MessageSnapshot {

    public static class a extends b implements com.kwad.framework.filedownloader.message.b {
        public a(int i2, boolean z2, int i3) {
            super(i2, true, i3);
        }
    }

    public static class e extends f {
        public e(int i2, int i3, int i4) {
            super(i2, i3, i4);
        }

        @Override // com.kwad.framework.filedownloader.message.h.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -2;
        }
    }

    public static class f extends h {
        private final int aCH;
        private final int aCI;

        public f(f fVar) {
            this(fVar.getId(), fVar.CK(), fVar.CL());
        }

        public byte AH() {
            return (byte) 1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CL() {
            return this.aCH;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.aCI);
            parcel.writeInt(this.aCH);
        }

        public f(int i2, int i3, int i4) {
            super(i2);
            this.aCI = i3;
            this.aCH = i4;
        }

        public f(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
            this.aCH = parcel.readInt();
        }
    }

    public static class i extends j implements com.kwad.framework.filedownloader.message.b {
        public i(int i2, int i3, int i4) {
            super(i2, i3, i4);
        }
    }

    public static class j extends f implements MessageSnapshot.a {
        public j(int i2, int i3, int i4) {
            super(i2, i3, i4);
        }

        @Override // com.kwad.framework.filedownloader.message.h.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -4;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot.a
        public final MessageSnapshot CQ() {
            return new f(this);
        }

        public j(Parcel parcel) {
            super(parcel);
        }
    }

    public h(int i2) {
        super(i2);
        this.aCx = false;
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final long CM() {
        return CL();
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final long CO() {
        return CK();
    }

    public static class g extends h {
        private final int aCI;

        public g(int i2, int i3) {
            super(i2);
            this.aCI = i3;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.aCI);
        }

        public g(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
        }
    }

    /* renamed from: com.kwad.framework.filedownloader.message.h$h, reason: collision with other inner class name */
    public static class C0589h extends d {
        private final int aCc;

        public C0589h(int i2, int i3, Throwable th, int i4) {
            super(i2, i3, th);
            this.aCc = i4;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 5;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int AL() {
            return this.aCc;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.h.d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.aCc);
        }

        public C0589h(Parcel parcel) {
            super(parcel);
            this.aCc = parcel.readInt();
        }
    }

    public static class b extends h {
        private final int aCH;
        private final boolean aCt;

        public b(int i2, boolean z2, int i3) {
            super(i2);
            this.aCt = z2;
            this.aCH = i3;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CL() {
            return this.aCH;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final boolean CN() {
            return this.aCt;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.aCt ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.aCH);
        }

        public b(Parcel parcel) {
            super(parcel);
            this.aCt = parcel.readByte() != 0;
            this.aCH = parcel.readInt();
        }
    }

    public static class d extends h {
        private final int aCI;
        private final Throwable aCw;

        public d(int i2, int i3, Throwable th) {
            super(i2);
            this.aCI = i3;
            this.aCw = th;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public byte AH() {
            return (byte) -1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CK() {
            return this.aCI;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final Throwable CP() {
            return this.aCw;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.aCI);
            parcel.writeSerializable(this.aCw);
        }

        public d(Parcel parcel) {
            super(parcel);
            this.aCI = parcel.readInt();
            this.aCw = (Throwable) parcel.readSerializable();
        }
    }

    public h(Parcel parcel) {
        super(parcel);
    }

    public static class c extends h {
        private final String aAR;
        private final int aCH;
        private final boolean aCu;
        private final String fileName;

        public c(int i2, boolean z2, int i3, String str, String str2) {
            super(i2);
            this.aCu = z2;
            this.aCH = i3;
            this.aAR = str;
            this.fileName = str2;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 2;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final boolean CC() {
            return this.aCu;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int CL() {
            return this.aCH;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final String getEtag() {
            return this.aAR;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final String getFileName() {
            return this.fileName;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeByte(this.aCu ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.aCH);
            parcel.writeString(this.aAR);
            parcel.writeString(this.fileName);
        }

        public c(Parcel parcel) {
            super(parcel);
            this.aCu = parcel.readByte() != 0;
            this.aCH = parcel.readInt();
            this.aAR = parcel.readString();
            this.fileName = parcel.readString();
        }
    }
}
