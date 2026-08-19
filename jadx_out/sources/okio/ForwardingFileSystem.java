package okio;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J%\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u001a2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010 J'\u0010#\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0018H\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010+\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b+\u0010*J\u001f\u0010-\u001a\u00020,2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0018H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u00100\u001a\u00020,2\u0006\u0010&\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u00101J\u001f\u00102\u001a\u00020,2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0018H\u0016¢\u0006\u0004\b2\u0010.J\u001f\u00103\u001a\u00020,2\u0006\u0010&\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u00101J\u000f\u00104\u001a\u00020\u0007H\u0016¢\u0006\u0004\b4\u00105R\u0017\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\f\n\u0004\b\u0002\u00106\u001a\u0004\b\u0002\u00107¨\u00068"}, d2 = {"Lokio/ForwardingFileSystem;", "Lokio/FileSystem;", "delegate", "<init>", "(Lokio/FileSystem;)V", "Lokio/Path;", "path", "", "functionName", "parameterName", "onPathParameter", "(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;", "onPathResult", "(Lokio/Path;Ljava/lang/String;)Lokio/Path;", "canonicalize", "(Lokio/Path;)Lokio/Path;", "Lokio/FileMetadata;", "metadataOrNull", "(Lokio/Path;)Lokio/FileMetadata;", "dir", "", "list", "(Lokio/Path;)Ljava/util/List;", "listOrNull", "", "followSymlinks", "Lkotlin/sequences/g;", "listRecursively", "(Lokio/Path;Z)Lkotlin/sequences/g;", com.sigmob.sdk.base.n.f36463z, "Lokio/FileHandle;", "openReadOnly", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "openReadWrite", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", com.sigmob.sdk.base.n.f36449l, "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "sink", "(Lokio/Path;Z)Lokio/Sink;", "appendingSink", "Lkotlin/j;", "createDirectory", "(Lokio/Path;Z)V", com.umeng.ccg.a.f49744F, "atomicMove", "(Lokio/Path;Lokio/Path;)V", "delete", "createSymlink", "toString", "()Ljava/lang/String;", "Lokio/FileSystem;", "()Lokio/FileSystem;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nForwardingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n1620#2,3:244\n1620#2,3:247\n*S KotlinDebug\n*F\n+ 1 ForwardingFileSystem.kt\nokio/ForwardingFileSystem\n*L\n166#1:244,3\n174#1:247,3\n*E\n"})
/* loaded from: classes5.dex */
public abstract class ForwardingFileSystem extends FileSystem {

    @NotNull
    private final FileSystem delegate;

    public ForwardingFileSystem(@NotNull FileSystem delegate) {
        kotlin.jvm.internal.j.e(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean mustExist) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", com.sigmob.sdk.base.n.f36463z), mustExist);
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.j.e(source, "source");
        kotlin.jvm.internal.j.e(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", com.sigmob.sdk.base.n.f36449l), onPathParameter(target, "atomicMove", com.umeng.ccg.a.f49744F));
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.j.e(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean mustCreate) throws IOException {
        kotlin.jvm.internal.j.e(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), mustCreate);
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.j.e(source, "source");
        kotlin.jvm.internal.j.e(target, "target");
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", com.sigmob.sdk.base.n.f36449l), onPathParameter(target, "createSymlink", com.umeng.ccg.a.f49744F));
    }

    @JvmName(name = "delegate")
    @NotNull
    /* renamed from: delegate, reason: from getter */
    public final FileSystem getDelegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean mustExist) throws IOException {
        kotlin.jvm.internal.j.e(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", "path"), mustExist);
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws IOException {
        kotlin.jvm.internal.j.e(dir, "dir");
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        kotlin.collections.u.x(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        kotlin.jvm.internal.j.e(dir, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        kotlin.collections.u.x(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @NotNull
    public kotlin.sequences.g listRecursively(@NotNull Path dir, boolean followSymlinks) {
        kotlin.jvm.internal.j.e(dir, "dir");
        return kotlin.sequences.q.z(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), followSymlinks), new Function1<Path, Path>() { // from class: okio.ForwardingFileSystem.listRecursively.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Path invoke(@NotNull Path it) {
                kotlin.jvm.internal.j.e(it, "it");
                return ForwardingFileSystem.this.onPathResult(it, "listRecursively");
            }
        });
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.j.e(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : FileMetadata.copy$default(fileMetadataMetadataOrNull, false, false, onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), null, null, null, null, null, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, null);
    }

    @NotNull
    public Path onPathParameter(@NotNull Path path, @NotNull String functionName, @NotNull String parameterName) {
        kotlin.jvm.internal.j.e(path, "path");
        kotlin.jvm.internal.j.e(functionName, "functionName");
        kotlin.jvm.internal.j.e(parameterName, "parameterName");
        return path;
    }

    @NotNull
    public Path onPathResult(@NotNull Path path, @NotNull String functionName) {
        kotlin.jvm.internal.j.e(path, "path");
        kotlin.jvm.internal.j.e(functionName, "functionName");
        return path;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", com.sigmob.sdk.base.n.f36463z));
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean mustCreate, boolean mustExist) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", com.sigmob.sdk.base.n.f36463z), mustCreate, mustExist);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean mustCreate) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", com.sigmob.sdk.base.n.f36463z), mustCreate);
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        return this.delegate.source(onPathParameter(file, com.sigmob.sdk.base.n.f36449l, com.sigmob.sdk.base.n.f36463z));
    }

    @NotNull
    public String toString() {
        return kotlin.jvm.internal.m.b(getClass()).d() + '(' + this.delegate + ')';
    }
}
