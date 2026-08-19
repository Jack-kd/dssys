.class public Lcom/baidu/mobads/sdk/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/sdk/internal/g$b;,
        Lcom/baidu/mobads/sdk/internal/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/mobads/sdk/internal/dg;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    .line 21
    invoke-virtual {p3, p2}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/internal/g$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$EntryAdListener;ZI)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v3, "sones"

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    .line 8
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$EntryAdListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;ZI)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v3, "feed"

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    .line 4
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/BaiduNativeManager$ExpressAdListener;)V

    .line 5
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/baidu/mobads/sdk/internal/dg;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/g$a;ZI)V
    .locals 6

    .line 1
    new-instance v0, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v3, "feed"

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v1, p3, v0}, Lcom/baidu/mobads/sdk/internal/g;-><init>(Landroid/content/Context;Lcom/baidu/mobads/sdk/internal/g$a;Lcom/baidu/mobads/sdk/internal/dg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mobads/sdk/internal/g$a;ZILjava/lang/String;)V
    .locals 8

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    const-string v0, "insite"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    new-instance v1, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v4, "insite"

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v1, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    .line 13
    const-string p1, "sug"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    new-instance v2, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v5, "sug"

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    goto :goto_0

    .line 15
    :cond_1
    const-string p1, "preroll"

    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    new-instance v2, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v5, "video"

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    goto :goto_0

    .line 17
    :cond_2
    new-instance v2, Lcom/baidu/mobads/sdk/internal/dg;

    const-string v5, "feed"

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mobads/sdk/internal/dg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v2, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    invoke-virtual {p1, p3}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/internal/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobads/sdk/api/RequestParameters;)Ljava/lang/String;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 13
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/bj;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/baidu/mobads/sdk/internal/bj;->p()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 8
    iput p1, v0, Lcom/baidu/mobads/sdk/internal/bj;->r:I

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mobads/sdk/internal/g$b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/internal/g$b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/bj;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->c(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/baidu/mobads/sdk/internal/g;->b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    return-void
.end method

.method public b(Lcom/baidu/mobads/sdk/api/RequestParameters;)V
    .locals 2

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;

    invoke-direct {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/api/RequestParameters$Builder;->build()Lcom/baidu/mobads/sdk/api/RequestParameters;

    move-result-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/baidu/mobads/sdk/internal/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/sdk/internal/bj;->h(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->a(Lcom/baidu/mobads/sdk/api/RequestParameters;)V

    .line 8
    iget-object p1, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    invoke-virtual {p1}, Lcom/baidu/mobads/sdk/internal/dg;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/baidu/mobads/sdk/internal/g;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->d(Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/mobads/sdk/internal/g;->a:Lcom/baidu/mobads/sdk/internal/dg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/baidu/mobads/sdk/internal/dg;->b(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
