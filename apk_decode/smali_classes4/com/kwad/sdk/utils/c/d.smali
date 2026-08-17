.class public final Lcom/kwad/sdk/utils/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bsN:Z = true

.field private static bsO:Lcom/kwad/sdk/utils/c/f;

.field private static bsP:Lcom/kwad/sdk/utils/c/e;

.field private static bsQ:Lcom/kwad/sdk/utils/c/b;

.field private static bsR:Lcom/kwad/sdk/utils/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static eI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsP:Lcom/kwad/sdk/utils/c/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/c/e;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/e;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/utils/c/d;->bsP:Lcom/kwad/sdk/utils/c/e;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsP:Lcom/kwad/sdk/utils/c/e;

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/sdk/utils/c/d;->bsN:Z

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/kwad/sdk/utils/c/a;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/String;

    .line 21
    .line 22
    return-object p0
.end method

.method public static eJ(Landroid/content/Context;)Lcom/kwad/sdk/k/a/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsR:Lcom/kwad/sdk/utils/c/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/c/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/c;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/utils/c/d;->bsR:Lcom/kwad/sdk/utils/c/c;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsR:Lcom/kwad/sdk/utils/c/c;

    .line 13
    .line 14
    sget-boolean v1, Lcom/kwad/sdk/utils/c/d;->bsN:Z

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/kwad/sdk/utils/c/a;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/kwad/sdk/k/a/d;

    .line 21
    .line 22
    return-object p0
.end method

.method public static k(ZI)Lcom/kwad/sdk/core/request/model/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsQ:Lcom/kwad/sdk/utils/c/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/c/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/b;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/utils/c/d;->bsQ:Lcom/kwad/sdk/utils/c/b;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/kwad/sdk/utils/c/b$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/b$a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-boolean p0, v0, Lcom/kwad/sdk/utils/c/b$a;->bsM:Z

    .line 18
    .line 19
    iput p1, v0, Lcom/kwad/sdk/utils/c/b$a;->aXf:I

    .line 20
    .line 21
    sget-object p0, Lcom/kwad/sdk/utils/c/d;->bsQ:Lcom/kwad/sdk/utils/c/b;

    .line 22
    .line 23
    sget-boolean p1, Lcom/kwad/sdk/utils/c/d;->bsN:Z

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/utils/c/a;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/kwad/sdk/core/request/model/b;

    .line 30
    .line 31
    return-object p0
.end method

.method public static p(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/utils/cf$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/c/d;->bsO:Lcom/kwad/sdk/utils/c/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/kwad/sdk/utils/c/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/f;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/kwad/sdk/utils/c/d;->bsO:Lcom/kwad/sdk/utils/c/f;

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/kwad/sdk/utils/c/f$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/kwad/sdk/utils/c/f$a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p0, v0, Lcom/kwad/sdk/utils/c/f$a;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    iput p1, v0, Lcom/kwad/sdk/utils/c/f$a;->maxSize:I

    .line 20
    .line 21
    sget-object p0, Lcom/kwad/sdk/utils/c/d;->bsO:Lcom/kwad/sdk/utils/c/f;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/utils/c/a;->a(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/List;

    .line 29
    .line 30
    return-object p0
.end method
