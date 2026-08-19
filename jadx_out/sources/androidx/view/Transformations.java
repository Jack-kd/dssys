package androidx.view;

import androidx.annotation.CheckResult;
import androidx.annotation.MainThread;
import androidx.arch.core.util.Function;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0001H\u0007\u001aB\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u001c\u0010\u0005\u001a\u0018\u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\t\u0012\u0007H\u0004¢\u0006\u0002\b\u00070\u0006H\u0007\u001a8\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00040\tH\u0007\u001aJ\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012$\u0010\u0005\u001a \u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0007\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u0001¢\u0006\u0002\b\u00070\u0006H\u0007\u001a>\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00010\tH\u0007¨\u0006\f"}, d2 = {"distinctUntilChanged", "Landroidx/lifecycle/LiveData;", "X", "map", "Y", "transform", "Lkotlin/Function1;", "Lkotlin/jvm/JvmSuppressWildcards;", "mapFunction", "Landroidx/arch/core/util/Function;", "switchMap", "switchMapFunction", "lifecycle-livedata_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "Transformations")
/* loaded from: classes.dex */
public final class Transformations {
    @JvmName(name = "distinctUntilChanged")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X> LiveData<X> distinctUntilChanged(@NotNull LiveData<X> liveData) {
        j.e(liveData, "<this>");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = true;
        if (liveData.isInitialized()) {
            mediatorLiveData.setValue(liveData.getValue());
            ref$BooleanRef.element = false;
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, kotlin.j>() { // from class: androidx.lifecycle.Transformations.distinctUntilChanged.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(Object obj) {
                invoke2((AnonymousClass1<X>) obj);
                return kotlin.j.f51397a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x2) {
                X value = mediatorLiveData.getValue();
                if (ref$BooleanRef.element || ((value == null && x2 != null) || !(value == null || j.a(value, x2)))) {
                    ref$BooleanRef.element = false;
                    mediatorLiveData.setValue(x2);
                }
            }
        }));
        return mediatorLiveData;
    }

    @JvmName(name = "map")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X, Y> LiveData<Y> map(@NotNull LiveData<X> liveData, @NotNull final Function1<X, Y> transform) {
        j.e(liveData, "<this>");
        j.e(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        if (liveData.isInitialized()) {
            mediatorLiveData.setValue(transform.invoke(liveData.getValue()));
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, kotlin.j>() { // from class: androidx.lifecycle.Transformations.map.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(Object obj) {
                invoke2((C10501<X>) obj);
                return kotlin.j.f51397a;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x2) {
                mediatorLiveData.setValue(transform.invoke(x2));
            }
        }));
        return mediatorLiveData;
    }

    @JvmName(name = "switchMap")
    @NotNull
    @CheckResult
    @MainThread
    public static final <X, Y> LiveData<Y> switchMap(@NotNull LiveData<X> liveData, @NotNull final Function1<X, LiveData<Y>> transform) {
        LiveData<Y> liveDataInvoke;
        j.e(liveData, "<this>");
        j.e(transform, "transform");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (liveData.isInitialized() && (liveDataInvoke = transform.invoke(liveData.getValue())) != null && liveDataInvoke.isInitialized()) {
            mediatorLiveData.setValue(liveDataInvoke.getValue());
        }
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<X, kotlin.j>() { // from class: androidx.lifecycle.Transformations.switchMap.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.j invoke(Object obj) {
                invoke2((C10511<X>) obj);
                return kotlin.j.f51397a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r4v2, types: [T, androidx.lifecycle.LiveData, java.lang.Object] */
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(X x2) {
                ?? r4 = (LiveData) transform.invoke(x2);
                T t2 = ref$ObjectRef.element;
                if (t2 != r4) {
                    if (t2 != 0) {
                        MediatorLiveData<Y> mediatorLiveData2 = mediatorLiveData;
                        j.b(t2);
                        mediatorLiveData2.removeSource((LiveData) t2);
                    }
                    ref$ObjectRef.element = r4;
                    if (r4 != 0) {
                        MediatorLiveData<Y> mediatorLiveData3 = mediatorLiveData;
                        j.b(r4);
                        final MediatorLiveData<Y> mediatorLiveData4 = mediatorLiveData;
                        mediatorLiveData3.addSource(r4, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1<Y, kotlin.j>() { // from class: androidx.lifecycle.Transformations.switchMap.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ kotlin.j invoke(Object obj) {
                                invoke2((C00271<Y>) obj);
                                return kotlin.j.f51397a;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(Y y2) {
                                mediatorLiveData4.setValue(y2);
                            }
                        }));
                    }
                }
            }
        }));
        return mediatorLiveData;
    }

    @JvmName(name = "map")
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData map(LiveData liveData, final Function mapFunction) {
        j.e(liveData, "<this>");
        j.e(mapFunction, "mapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.Transformations.map.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m35invoke(obj);
                return kotlin.j.f51397a;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m35invoke(Object obj) {
                mediatorLiveData.setValue(mapFunction.apply(obj));
            }
        }));
        return mediatorLiveData;
    }

    @JvmName(name = "switchMap")
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use kotlin functions, instead of outdated arch core Functions")
    @CheckResult
    @MainThread
    public static final /* synthetic */ LiveData switchMap(LiveData liveData, final Function switchMapFunction) {
        j.e(liveData, "<this>");
        j.e(switchMapFunction, "switchMapFunction");
        final MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(liveData, new Observer() { // from class: androidx.lifecycle.Transformations.switchMap.2

            @Nullable
            private LiveData liveData;

            @Nullable
            public final LiveData getLiveData() {
                return this.liveData;
            }

            @Override // androidx.view.Observer
            public void onChanged(Object value) {
                LiveData liveData2 = (LiveData) switchMapFunction.apply(value);
                LiveData liveData3 = this.liveData;
                if (liveData3 == liveData2) {
                    return;
                }
                if (liveData3 != null) {
                    MediatorLiveData mediatorLiveData2 = mediatorLiveData;
                    j.b(liveData3);
                    mediatorLiveData2.removeSource(liveData3);
                }
                this.liveData = liveData2;
                if (liveData2 != null) {
                    MediatorLiveData mediatorLiveData3 = mediatorLiveData;
                    j.b(liveData2);
                    final MediatorLiveData mediatorLiveData4 = mediatorLiveData;
                    mediatorLiveData3.addSource(liveData2, new Transformations$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: androidx.lifecycle.Transformations$switchMap$2$onChanged$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            m36invoke(obj);
                            return kotlin.j.f51397a;
                        }

                        /* renamed from: invoke, reason: collision with other method in class */
                        public final void m36invoke(Object obj) {
                            mediatorLiveData4.setValue(obj);
                        }
                    }));
                }
            }

            public final void setLiveData(@Nullable LiveData liveData2) {
                this.liveData = liveData2;
            }
        });
        return mediatorLiveData;
    }
}
