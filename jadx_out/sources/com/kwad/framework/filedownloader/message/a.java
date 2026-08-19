package com.kwad.framework.filedownloader.message;

/* loaded from: classes4.dex */
public interface a {

    /* renamed from: com.kwad.framework.filedownloader.message.a$a, reason: collision with other inner class name */
    public static class C0587a extends MessageSnapshot implements a {
        private final MessageSnapshot aCs;

        public C0587a(MessageSnapshot messageSnapshot) {
            super(messageSnapshot.getId());
            if (messageSnapshot.AH() != -3) {
                throw new IllegalArgumentException(com.kwad.framework.filedownloader.f.f.c("can't create the block complete message for id[%d], status[%d]", Integer.valueOf(messageSnapshot.getId()), Byte.valueOf(messageSnapshot.AH())));
            }
            this.aCs = messageSnapshot;
        }

        @Override // com.kwad.framework.filedownloader.message.c
        public final byte AH() {
            return (byte) 4;
        }

        @Override // com.kwad.framework.filedownloader.message.a
        public final MessageSnapshot CJ() {
            return this.aCs;
        }
    }

    MessageSnapshot CJ();
}
