.class public final Lcom/kwad/sdk/core/webview/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/webview/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private ads:I

.field private aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

.field private atg:Lcom/kwad/sdk/core/webview/KsAdWebView$b;

.field private bcA:J

.field private bcB:J

.field private bcl:Z

.field private bcr:Lcom/kwad/sdk/core/webview/KsAdWebView$e;

.field private bcs:Lcom/kwad/sdk/core/webview/KsAdWebView$d;

.field private bct:Z

.field private bcu:Z

.field private bcv:Z

.field private bcw:Z

.field private bcx:Z

.field private bcy:Z

.field private bcz:Z

.field private mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcu:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcv:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcw:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcx:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcl:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcz:Z

    .line 17
    .line 18
    const-wide/16 v0, 0x258

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcA:J

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcB:J

    .line 25
    .line 26
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    return-void
.end method

.method private Px()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcz:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final PA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcx:Z

    .line 2
    .line 3
    return v0
.end method

.method public final PB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final PC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcu:Z

    .line 2
    .line 3
    return v0
.end method

.method public final PD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcy:Z

    .line 2
    .line 3
    return v0
.end method

.method public final PE()Z
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/core/webview/a/c$a;->Px()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcB:J

    .line 13
    .line 14
    const-wide/16 v6, 0x0

    .line 15
    .line 16
    cmp-long v0, v4, v6

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    iget-wide v4, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcA:J

    .line 22
    .line 23
    cmp-long v0, v2, v4

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_1
    return v1
.end method

.method public final PF()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->dE(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final PG()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/kwad/sdk/core/response/helper/a;->dF(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final Pw()Lcom/kwad/sdk/core/webview/KsAdWebView$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcs:Lcom/kwad/sdk/core/webview/KsAdWebView$d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Py()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcv:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Pz()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcw:Z

    .line 2
    .line 3
    return v0
.end method

.method public final a(Lcom/kwad/sdk/core/webview/KsAdWebView$b;)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->atg:Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    return-object p0
.end method

.method public final a(Lcom/kwad/sdk/core/webview/KsAdWebView$d;)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcs:Lcom/kwad/sdk/core/webview/KsAdWebView$d;

    return-object p0
.end method

.method public final aR(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcB:J

    .line 2
    .line 3
    return-void
.end method

.method public final b(Lcom/kwad/sdk/core/webview/KsAdWebView$e;)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcr:Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bP(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcz:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final bQ(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bct:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final bR(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcv:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final bS(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcw:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final bT(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcx:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final bU(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcu:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final bV(Z)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcy:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final c(Lcom/kwad/sdk/core/webview/KsAdWebView$c;)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public final eU(I)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->ads:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final fo(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/webview/a/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAdTemplate()Lcom/kwad/sdk/core/response/model/AdTemplate;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final jG()Lcom/kwad/sdk/core/webview/KsAdWebView$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcr:Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public final oq()Lcom/kwad/sdk/core/webview/KsAdWebView$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->atg:Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final qa()Lcom/kwad/sdk/core/adlog/c/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/adlog/c/a;->Jf()Lcom/kwad/sdk/core/adlog/c/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->ads:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->ea(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bct:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/adlog/c/a;->eb(I)Lcom/kwad/sdk/core/adlog/c/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->atg:Lcom/kwad/sdk/core/webview/KsAdWebView$b;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcs:Lcom/kwad/sdk/core/webview/KsAdWebView$d;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->bcr:Lcom/kwad/sdk/core/webview/KsAdWebView$e;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 13
    .line 14
    return-void
.end method

.method public final ut()Lcom/kwad/sdk/core/webview/KsAdWebView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/core/webview/a/c$a;->aec:Lcom/kwad/sdk/core/webview/KsAdWebView$c;

    .line 2
    .line 3
    return-object v0
.end method
