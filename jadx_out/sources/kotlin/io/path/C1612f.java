package kotlin.io.path;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.List;
import kotlin.collections.C1604i;

/* renamed from: kotlin.io.path.f, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1612f extends SimpleFileVisitor {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f51382a;

    /* renamed from: b, reason: collision with root package name */
    public C1616j f51383b;

    /* renamed from: c, reason: collision with root package name */
    public C1604i f51384c = new C1604i();

    public C1612f(boolean z2) {
        this.f51382a = z2;
    }

    public FileVisitResult a(Path dir, BasicFileAttributes attrs) throws IOException {
        kotlin.jvm.internal.j.e(dir, "dir");
        kotlin.jvm.internal.j.e(attrs, "attrs");
        this.f51384c.add(new C1616j(dir, attrs.fileKey(), this.f51383b));
        FileVisitResult fileVisitResultPreVisitDirectory = super.preVisitDirectory(dir, attrs);
        kotlin.jvm.internal.j.d(fileVisitResultPreVisitDirectory, "preVisitDirectory(...)");
        return fileVisitResultPreVisitDirectory;
    }

    public final List b(C1616j directoryNode) throws IOException {
        kotlin.jvm.internal.j.e(directoryNode, "directoryNode");
        this.f51383b = directoryNode;
        Files.walkFileTree(directoryNode.d(), C1615i.f51385a.a(this.f51382a), 1, AbstractC1609c.a(this));
        this.f51384c.removeFirst();
        C1604i c1604i = this.f51384c;
        this.f51384c = new C1604i();
        return c1604i;
    }

    public FileVisitResult c(Path file, BasicFileAttributes attrs) throws IOException {
        kotlin.jvm.internal.j.e(file, "file");
        kotlin.jvm.internal.j.e(attrs, "attrs");
        this.f51384c.add(new C1616j(file, null, this.f51383b));
        FileVisitResult fileVisitResultVisitFile = super.visitFile(file, attrs);
        kotlin.jvm.internal.j.d(fileVisitResultVisitFile, "visitFile(...)");
        return fileVisitResultVisitFile;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes basicFileAttributes) {
        return a(AbstractC1608b.a(obj), basicFileAttributes);
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public /* bridge */ /* synthetic */ FileVisitResult visitFile(Object obj, BasicFileAttributes basicFileAttributes) {
        return c(AbstractC1608b.a(obj), basicFileAttributes);
    }
}
