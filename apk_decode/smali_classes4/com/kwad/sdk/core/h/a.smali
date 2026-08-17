.class public final Lcom/kwad/sdk/core/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/h/a$a;
    }
.end annotation


# static fields
.field private static aYU:Lcom/kwad/sdk/core/h/a$a;

.field private static aYV:Z

.field private static aYW:Z

.field private static final mHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/kwad/sdk/core/h/a;->mHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic Il()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/h/a;->Ow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic OA()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/kwad/sdk/core/h/a;->aYV:Z

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic OB()Lcom/kwad/sdk/core/h/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static Ov()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/core/h/a$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/core/h/a$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/kwad/sdk/utils/i;->execute(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static Ow()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 3
    .line 4
    sget-object v0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/h/a;->Ox()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/kwad/sdk/core/h/a;->eI(I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "tk_config"

    .line 17
    .line 18
    sget-boolean v1, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 19
    .line 20
    const-string v2, "ksadsdk_tk_switch"

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/utils/ai;->l(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static Ox()I
    .locals 5

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/sdk/core/h/a$a;->aYZ:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    sget-object v1, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 12
    .line 13
    iget v2, v1, Lcom/kwad/sdk/core/h/a$a;->aYY:I

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    :goto_0
    iget-object v1, v1, Lcom/kwad/sdk/core/h/a$a;->aYX:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v1, v3

    .line 32
    :goto_1
    sget-object v4, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/kwad/sdk/core/h/a$a;->aZa:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    :cond_2
    xor-int/2addr v0, v2

    .line 45
    xor-int/2addr v0, v1

    .line 46
    xor-int/2addr v0, v3

    .line 47
    return v0
.end method

.method public static Oy()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/h/a;->mHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const-string v0, "tk_config"

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v2, "ksadsdk_tk_switch"

    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/utils/ai;->m(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public static synthetic Oz()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/h/a;->mHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic a(Lcom/kwad/sdk/core/h/a$a;)Lcom/kwad/sdk/core/h/a$a;
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic bH(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwad/sdk/core/h/a;->aYV:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic bI(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 2
    .line 3
    return p0
.end method

.method private static eI(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    shl-int/2addr v2, v1

    .line 15
    and-int/2addr v2, p0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 19
    .line 20
    invoke-static {v1}, Lcom/kwad/sdk/core/h/a;->eJ(I)V

    .line 21
    .line 22
    .line 23
    sget-boolean v2, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method private static eJ(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/kwad/sdk/core/h/a$a;->aZa:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WM()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_4

    .line 26
    .line 27
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-object p0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/kwad/sdk/core/h/a$a;->aYX:Ljava/util/List;

    .line 33
    .line 34
    const-string v1, "5.4.10.2"

    .line 35
    .line 36
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_4

    .line 41
    .line 42
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    sget-object p0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 46
    .line 47
    iget p0, p0, Lcom/kwad/sdk/core/h/a$a;->aYY:I

    .line 48
    .line 49
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WX()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge p0, v1, :cond_4

    .line 54
    .line 55
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    sget-object p0, Lcom/kwad/sdk/core/h/a;->aYU:Lcom/kwad/sdk/core/h/a$a;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/kwad/sdk/core/h/a$a;->aYZ:Ljava/util/List;

    .line 61
    .line 62
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WN()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_4

    .line 71
    .line 72
    sput-boolean v0, Lcom/kwad/sdk/core/h/a;->aYW:Z

    .line 73
    .line 74
    :cond_4
    :goto_0
    return-void
.end method
