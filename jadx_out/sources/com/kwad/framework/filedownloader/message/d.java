package com.kwad.framework.filedownloader.message;

import android.os.Parcel;
import com.kwad.framework.filedownloader.message.MessageSnapshot;

/* loaded from: classes4.dex */
public abstract class d extends MessageSnapshot {

    public static class a extends b implements com.kwad.framework.filedownloader.message.b {
        public a(int i2, boolean z2, long j2) {
            super(i2, true, j2);
        }
    }

    public static class e extends f {
        public e(int i2, long j2, long j3) {
            super(i2, j2, j3);
        }

        @Override // com.kwad.framework.filedownloader.message.d.f, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -2;
        }
    }

    public static class f extends d {
        private final long aCv;
        private final long totalBytes;

        public f(f fVar) {
            this(fVar.getId(), fVar.CO(), fVar.CM());
        }

        public byte AH() {
            return (byte) 1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CM() {
            return this.totalBytes;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.aCv);
            parcel.writeLong(this.totalBytes);
        }

        public f(int i2, long j2, long j3) {
            super(i2);
            this.aCv = j2;
            this.totalBytes = j3;
        }

        public f(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
            this.totalBytes = parcel.readLong();
        }
    }

    public static class i extends j implements com.kwad.framework.filedownloader.message.b {
        public i(int i2, long j2, long j3) {
            super(i2, j2, j3);
        }
    }

    public static class j extends f implements MessageSnapshot.a {
        public j(int i2, long j2, long j3) {
            super(i2, j2, j3);
        }

        @Override // com.kwad.framework.filedownloader.message.d.f, com.kwad.framework.filedownloader.message.c
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

    public d(int i2) {
        super(i2);
        this.aCx = true;
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final int CK() {
        if (CO() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) CO();
    }

    @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
    public final int CL() {
        if (CM() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) CM();
    }

    public static class g extends d {
        private final long aCv;

        public g(int i2, long j2) {
            super(i2);
            this.aCv = j2;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeLong(this.aCv);
        }

        public g(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
        }
    }

    public static class h extends C0588d {
        private final int aCc;

        public h(int i2, long j2, Throwable th, int i3) {
            super(i2, j2, th);
            this.aCc = i3;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0588d, com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 5;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final int AL() {
            return this.aCc;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0588d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // com.kwad.framework.filedownloader.message.d.C0588d, com.kwad.framework.filedownloader.message.MessageSnapshot, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.aCc);
        }

        public h(Parcel parcel) {
            super(parcel);
            this.aCc = parcel.readInt();
        }
    }

    public static class b extends d {
        private final boolean aCt;
        private final long totalBytes;

        public b(int i2, boolean z2, long j2) {
            super(i2);
            this.aCt = z2;
            this.totalBytes = j2;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) -3;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CM() {
            return this.totalBytes;
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
            parcel.writeLong(this.totalBytes);
        }

        public b(Parcel parcel) {
            super(parcel);
            this.aCt = parcel.readByte() != 0;
            this.totalBytes = parcel.readLong();
        }
    }

    /* renamed from: com.kwad.framework.filedownloader.message.d$d, reason: collision with other inner class name */
    public static class C0588d extends d {
        private final long aCv;
        private final Throwable aCw;

        public C0588d(int i2, long j2, Throwable th) {
            super(i2);
            this.aCv = j2;
            this.aCw = th;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public byte AH() {
            return (byte) -1;
        }

        @Override // com.kwad.framework.filedownloader.message.MessageSnapshot
        public final long CO() {
            return this.aCv;
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
            parcel.writeLong(this.aCv);
            parcel.writeSerializable(this.aCw);
        }

        public C0588d(Parcel parcel) {
            super(parcel);
            this.aCv = parcel.readLong();
            this.aCw = (Throwable) parcel.readSerializable();
        }
    }

    public d(Parcel parcel) {
        super(parcel);
    }

    public static class c extends d {
        private final String aAR;
        private final boolean aCu;
        private final String fileName;
        private final long totalBytes;

        public c(int i2, boolean z2, long j2, String str, String str2) {
            super(i2);
            this.aCu = z2;
            this.totalBytes = j2;
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
        public final long CM() {
            return this.totalBytes;
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
            parcel.writeLong(this.totalBytes);
            parcel.writeString(this.aAR);
            parcel.writeString(this.fileName);
        }

        public c(Parcel parcel) {
            super(parcel);
            this.aCu = parcel.readByte() != 0;
            this.totalBytes = parcel.readLong();
            this.aAR = parcel.readString();
            this.fileName = parcel.readString();
        }
    }
}
