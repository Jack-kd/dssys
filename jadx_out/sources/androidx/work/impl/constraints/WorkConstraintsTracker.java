package androidx.work.impl.constraints;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkConnectedController;
import androidx.work.impl.constraints.controllers.NetworkMeteredController;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingController;
import androidx.work.impl.constraints.controllers.NetworkUnmeteredController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.q;
import kotlin.collections.r;
import kotlin.collections.y;
import kotlin.coroutines.e;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.flow.AbstractC1641e;
import kotlinx.coroutines.flow.InterfaceC1639c;
import kotlinx.coroutines.flow.InterfaceC1640d;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0014¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/constraints/WorkConstraintsTracker;", "", "", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "controllers", "<init>", "(Ljava/util/List;)V", "Landroidx/work/impl/constraints/trackers/Trackers;", "trackers", "(Landroidx/work/impl/constraints/trackers/Trackers;)V", "Landroidx/work/impl/model/WorkSpec;", "spec", "Lkotlinx/coroutines/flow/c;", "Landroidx/work/impl/constraints/ConstraintsState;", "track", "(Landroidx/work/impl/model/WorkSpec;)Lkotlinx/coroutines/flow/c;", "workSpec", "", "areAllConstraintsMet", "(Landroidx/work/impl/model/WorkSpec;)Z", "Ljava/util/List;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkConstraintsTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,104:1\n766#2:105\n857#2,2:106\n1549#2:108\n1620#2,3:109\n766#2:117\n857#2,2:118\n287#3:112\n288#3:115\n37#4,2:113\n106#5:116\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n*L\n84#1:105\n84#1:106,2\n84#1:108\n84#1:109,3\n91#1:117\n91#1:118,2\n85#1:112\n85#1:115\n85#1:113,2\n85#1:116\n*E\n"})
/* loaded from: classes.dex */
public final class WorkConstraintsTracker {

    @NotNull
    private final List<ConstraintController<?>> controllers;

    /* JADX WARN: Multi-variable type inference failed */
    public WorkConstraintsTracker(@NotNull List<? extends ConstraintController<?>> controllers) {
        j.e(controllers, "controllers");
        this.controllers = controllers;
    }

    public final boolean areAllConstraintsMet(@NotNull WorkSpec workSpec) {
        j.e(workSpec, "workSpec");
        List<ConstraintController<?>> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).isConstrained(workSpec)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            Logger.get().debug(WorkConstraintsTrackerKt.TAG, "Work " + workSpec.id + " constrained by " + y.Q(arrayList, null, null, null, 0, null, new Function1<ConstraintController<?>, CharSequence>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker.areAllConstraintsMet.1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final CharSequence invoke(@NotNull ConstraintController<?> it) {
                    j.e(it, "it");
                    String simpleName = it.getClass().getSimpleName();
                    j.d(simpleName, "it.javaClass.simpleName");
                    return simpleName;
                }
            }, 31, null));
        }
        return arrayList.isEmpty();
    }

    @NotNull
    public final InterfaceC1639c track(@NotNull WorkSpec spec) {
        j.e(spec, "spec");
        List<ConstraintController<?>> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).hasConstraint(spec)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(r.v(arrayList, 10));
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            arrayList2.add(((ConstraintController) obj2).track());
        }
        final InterfaceC1639c[] interfaceC1639cArr = (InterfaceC1639c[]) y.a0(arrayList2).toArray(new InterfaceC1639c[0]);
        return AbstractC1641e.l(new InterfaceC1639c() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1

            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/d;", "", "it", "Lkotlin/j;", "<anonymous>", "(Lkotlinx/coroutines/flow/d;Lkotlin/Array;)V", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", i = {}, l = {MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2\n+ 2 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,332:1\n86#2:333\n1282#3,2:334\n*S KotlinDebug\n*F\n+ 1 WorkConstraintsTracker.kt\nandroidx/work/impl/constraints/WorkConstraintsTracker\n*L\n86#1:334,2\n*E\n"})
            /* renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
            public static final class AnonymousClass3 extends SuspendLambda implements Function3<InterfaceC1640d, ConstraintsState[], e, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(e eVar) {
                    super(3, eVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @Nullable
                public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
                    ConstraintsState constraintsState;
                    Object objE = a.e();
                    int i2 = this.label;
                    if (i2 == 0) {
                        kotlin.e.b(obj);
                        InterfaceC1640d interfaceC1640d = (InterfaceC1640d) this.L$0;
                        ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                        int length = constraintsStateArr.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 >= length) {
                                constraintsState = null;
                                break;
                            }
                            constraintsState = constraintsStateArr[i3];
                            if (!j.a(constraintsState, ConstraintsState.ConstraintsMet.INSTANCE)) {
                                break;
                            }
                            i3++;
                        }
                        if (constraintsState == null) {
                            constraintsState = ConstraintsState.ConstraintsMet.INSTANCE;
                        }
                        this.label = 1;
                        if (interfaceC1640d.emit(constraintsState, this) == objE) {
                            return objE;
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        kotlin.e.b(obj);
                    }
                    return kotlin.j.f51397a;
                }

                @Override // kotlin.jvm.functions.Function3
                @Nullable
                public final Object invoke(@NotNull InterfaceC1640d interfaceC1640d, @NotNull ConstraintsState[] constraintsStateArr, @Nullable e eVar) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(eVar);
                    anonymousClass3.L$0 = interfaceC1640d;
                    anonymousClass3.L$1 = constraintsStateArr;
                    return anonymousClass3.invokeSuspend(kotlin.j.f51397a);
                }
            }

            @Override // kotlinx.coroutines.flow.InterfaceC1639c
            @Nullable
            public Object collect(@NotNull InterfaceC1640d interfaceC1640d, @NotNull e eVar) {
                final InterfaceC1639c[] interfaceC1639cArr2 = interfaceC1639cArr;
                Object objA = CombineKt.a(interfaceC1640d, interfaceC1639cArr2, new Function0<ConstraintsState[]>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @Nullable
                    public final ConstraintsState[] invoke() {
                        return new ConstraintsState[interfaceC1639cArr2.length];
                    }
                }, new AnonymousClass3(null), eVar);
                return objA == a.e() ? objA : kotlin.j.f51397a;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTracker(@NotNull Trackers trackers) {
        this((List<? extends ConstraintController<?>>) q.o(new BatteryChargingController(trackers.getBatteryChargingTracker()), new BatteryNotLowController(trackers.getBatteryNotLowTracker()), new StorageNotLowController(trackers.getStorageNotLowTracker()), new NetworkConnectedController(trackers.getNetworkStateTracker()), new NetworkUnmeteredController(trackers.getNetworkStateTracker()), new NetworkNotRoamingController(trackers.getNetworkStateTracker()), new NetworkMeteredController(trackers.getNetworkStateTracker())));
        j.e(trackers, "trackers");
    }
}
