.class public final Lcom/kwad/sdk/kgeo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/kgeo/c$a;
    }
.end annotation


# static fields
.field private static final sHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;


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
    sput-object v0, Lcom/kwad/sdk/kgeo/c;->sHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kwad/sdk/kgeo/c$a;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useMacAddressDisable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/kwad/sdk/kgeo/c$a;->rc()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/t;->UH()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/kwad/sdk/kgeo/c$a;->rc()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget-object v0, Lcom/kwad/sdk/kgeo/c;->sHasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/kwad/sdk/utils/AbiUtil;->isArm64(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    new-instance v2, Lcom/kwad/library/solder/lib/c/b;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/kwad/library/solder/lib/c/b;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "1.0.3"

    .line 44
    .line 45
    iput-object v3, v2, Lcom/kwad/library/solder/lib/c/b;->version:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const-string v3, "kmc-v8a"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const-string v3, "kmc-v7a"

    .line 53
    .line 54
    :goto_0
    iput-object v3, v2, Lcom/kwad/library/solder/lib/c/b;->aFr:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {}, Lcom/kwad/sdk/core/network/idc/a;->Mo()Lcom/kwad/sdk/core/network/idc/a;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    const-string v4, "https://p1-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/kmac/ks_kmac64"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    const-string v4, "https://p1-lm.adkwai.com/udata/pkg/KS-Android-KSAdSDk/kmac/ks_kmac32"

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/network/idc/a;->eQ(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v2, Lcom/kwad/library/solder/lib/c/b;->aFs:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    const-string v0, "db9a8da62a0354ec5710ec03e2743f07"

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    const-string v0, "2440a8221230913d4287c6b1e02b49f1"

    .line 79
    .line 80
    :goto_2
    iput-object v0, v2, Lcom/kwad/library/solder/lib/c/b;->aFu:Ljava/lang/String;

    .line 81
    .line 82
    iput-boolean v1, v2, Lcom/kwad/library/solder/lib/c/b;->enable:Z

    .line 83
    .line 84
    new-instance v0, Lcom/kwad/sdk/kgeo/c$1;

    .line 85
    .line 86
    invoke-direct {v0, p1, p0}, Lcom/kwad/sdk/kgeo/c$1;-><init>(Lcom/kwad/sdk/kgeo/c$a;Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v2, v0}, Lcom/kwad/library/solder/a/a;->a(Landroid/content/Context;Lcom/kwad/library/solder/lib/c/b;Lcom/kwad/library/solder/lib/ext/b$c;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
