package org.eclipse.jetty.io.bio;

/* loaded from: classes5.dex */
class StringEndPoint$1 extends IllegalStateException {
    final /* synthetic */ c this$0;
    final /* synthetic */ Exception val$e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringEndPoint$1(c cVar, String str, Exception exc) {
        super(str);
        this.val$e = exc;
        initCause(exc);
    }
}
