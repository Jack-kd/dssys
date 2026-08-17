.class final Lms/bz/bd/c/Pgl/pbld$pgla;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lms/bz/bd/c/Pgl/pbld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "pgla"
.end annotation


# instance fields
.field public hp:Ljava/util/zip/ZipFile;

.field public l:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pbld$pgla;->hp:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lms/bz/bd/c/Pgl/pbld$pgla;->l:Ljava/util/zip/ZipEntry;

    return-void
.end method
