package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import com.umeng.analytics.pro.bv;
import kotlin.Metadata;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.j;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.InterfaceC1639c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005JC\u0010\r\u001a\u00020\u000221\u0010\f\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0006H\u0096@¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000fR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\u00108\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/datastore/preferences/core/PreferenceDataStore;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "delegate", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", bv.aI, "Lkotlin/coroutines/e;", "", "transform", "updateData", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/e;)Ljava/lang/Object;", "Landroidx/datastore/core/DataStore;", "Lkotlinx/coroutines/flow/c;", "getData", "()Lkotlinx/coroutines/flow/c;", "data", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PreferenceDataStore implements DataStore<Preferences> {

    @NotNull
    private final DataStore<Preferences> delegate;

    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", "Landroidx/datastore/preferences/core/Preferences;", "it"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.datastore.preferences.core.PreferenceDataStore$updateData$2, reason: invalid class name */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<Preferences, e, Object> {
        final /* synthetic */ Function2<Preferences, e, Object> $transform;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(Function2<? super Preferences, ? super e, ? extends Object> function2, e eVar) {
            super(2, eVar);
            this.$transform = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final e create(@Nullable Object obj, @NotNull e eVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$transform, eVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull Preferences preferences, @Nullable e eVar) {
            return ((AnonymousClass2) create(preferences, eVar)).invokeSuspend(j.f51397a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            Object objE = a.e();
            int i2 = this.label;
            if (i2 == 0) {
                kotlin.e.b(obj);
                Preferences preferences = (Preferences) this.L$0;
                Function2<Preferences, e, Object> function2 = this.$transform;
                this.label = 1;
                obj = function2.invoke(preferences, this);
                if (obj == objE) {
                    return objE;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.e.b(obj);
            }
            Preferences preferences2 = (Preferences) obj;
            kotlin.jvm.internal.j.c(preferences2, "null cannot be cast to non-null type androidx.datastore.preferences.core.MutablePreferences");
            ((MutablePreferences) preferences2).freeze$datastore_preferences_core_release();
            return preferences2;
        }
    }

    public PreferenceDataStore(@NotNull DataStore<Preferences> delegate) {
        kotlin.jvm.internal.j.e(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.datastore.core.DataStore
    @NotNull
    public InterfaceC1639c getData() {
        return this.delegate.getData();
    }

    @Override // androidx.datastore.core.DataStore
    @Nullable
    public Object updateData(@NotNull Function2<? super Preferences, ? super e, ? extends Object> function2, @NotNull e eVar) {
        return this.delegate.updateData(new AnonymousClass2(function2, null), eVar);
    }
}
