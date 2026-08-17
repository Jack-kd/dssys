.class public final Lcom/kwad/library/solder/lib/ext/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/library/solder/lib/ext/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final aFp:Ljava/lang/String;


# instance fields
.field private aEM:I

.field private aFa:Ljava/lang/String;

.field private aFb:Ljava/lang/String;

.field private aFc:Ljava/lang/String;

.field private aFd:Ljava/lang/String;

.field private aFe:Ljava/lang/String;

.field private aFf:Ljava/lang/String;

.field private aFg:Ljava/lang/String;

.field private aFh:Z

.field private aFi:Z

.field private aFj:Z

.field private aFk:Ljava/util/concurrent/ExecutorService;

.field private aFl:Ljava/lang/String;

.field private aFm:[B

.field private aFn:Z

.field private aFq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/library/solder/lib/ext/c$a;->Ev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "base-1_apk"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "base-1.apk"

    .line 11
    .line 12
    :goto_0
    sput-object v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFp:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aEM:I

    .line 6
    .line 7
    const-string v0, "sodler"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFa:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "code-cache"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFb:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "lib"

    .line 16
    .line 17
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFc:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "temp"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFd:Ljava/lang/String;

    .line 22
    .line 23
    sget-object v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFp:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFf:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, ".tmp"

    .line 28
    .line 29
    iput-object v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFe:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFi:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFh:Z

    .line 35
    .line 36
    return-void
.end method

.method private static Ev()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method


# virtual methods
.method public final Ew()Lcom/kwad/library/solder/lib/ext/c;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/kwad/library/solder/lib/ext/c;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFh:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFi:Z

    .line 8
    .line 9
    iget-object v4, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFg:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFa:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFb:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFc:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFd:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFe:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFf:Ljava/lang/String;

    .line 22
    .line 23
    iget v11, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aEM:I

    .line 24
    .line 25
    iget-object v12, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFl:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFm:[B

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFn:Z

    .line 30
    .line 31
    iget-boolean v15, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFj:Z

    .line 32
    .line 33
    move-object/from16 v16, v1

    .line 34
    .line 35
    iget-object v1, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFk:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    move-object/from16 v17, v1

    .line 38
    .line 39
    iget v1, v0, Lcom/kwad/library/solder/lib/ext/c$a;->aFq:I

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    move-object/from16 v19, v17

    .line 44
    .line 45
    move/from16 v17, v1

    .line 46
    .line 47
    move-object/from16 v1, v16

    .line 48
    .line 49
    move-object/from16 v16, v19

    .line 50
    .line 51
    invoke-direct/range {v1 .. v18}, Lcom/kwad/library/solder/lib/ext/c;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BZZLjava/util/concurrent/ExecutorService;IB)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    return-object v16
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFk:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bA(Z)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFj:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final bz(Z)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFn:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final cI(Ljava/lang/String;)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFa:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final di(I)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aEM:I

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public final dj(I)Lcom/kwad/library/solder/lib/ext/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/library/solder/lib/ext/c$a;->aFq:I

    .line 2
    .line 3
    return-object p0
.end method
