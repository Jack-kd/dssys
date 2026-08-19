package kotlinx.coroutines;

/* loaded from: classes5.dex */
public class J0 extends AbstractC1625a {
    public J0(kotlin.coroutines.i iVar, boolean z2) {
        super(iVar, true, z2);
    }

    @Override // kotlinx.coroutines.y0
    public boolean k0(Throwable th) {
        J.a(getContext(), th);
        return true;
    }
}
