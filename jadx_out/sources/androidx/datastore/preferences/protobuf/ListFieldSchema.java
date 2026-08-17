package androidx.datastore.preferences.protobuf;

import java.util.List;

@CheckReturnValue
/* loaded from: classes.dex */
interface ListFieldSchema {
    void makeImmutableListAt(Object obj, long j2);

    <L> void mergeListsAt(Object obj, Object obj2, long j2);

    <L> List<L> mutableListAt(Object obj, long j2);
}
