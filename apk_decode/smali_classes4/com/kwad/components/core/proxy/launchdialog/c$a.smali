.class final Lcom/kwad/components/core/proxy/launchdialog/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/proxy/launchdialog/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/proxy/launchdialog/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic ajd:Lcom/kwad/components/core/proxy/launchdialog/c;

.field private aje:Lcom/kwad/components/core/proxy/launchdialog/f;

.field private ajf:Z


# direct methods
.method private constructor <init>(Lcom/kwad/components/core/proxy/launchdialog/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajd:Lcom/kwad/components/core/proxy/launchdialog/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajf:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/components/core/proxy/launchdialog/c;B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/kwad/components/core/proxy/launchdialog/c$a;-><init>(Lcom/kwad/components/core/proxy/launchdialog/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/kwad/components/core/proxy/launchdialog/c$a;Lcom/kwad/components/core/proxy/launchdialog/f;)Lcom/kwad/components/core/proxy/launchdialog/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    return-object p1
.end method

.method public static synthetic a(Lcom/kwad/components/core/proxy/launchdialog/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/launchdialog/c$a;->stop()V

    return-void
.end method

.method private stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/launchdialog/c$a;->vG()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    .line 6
    .line 7
    return-void
.end method

.method private vG()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajf:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final j(Lcom/kwad/components/core/proxy/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/kwad/components/core/proxy/launchdialog/f;->j(Lcom/kwad/components/core/proxy/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k(Lcom/kwad/components/core/proxy/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-interface {v0, p1}, Lcom/kwad/components/core/proxy/launchdialog/f;->k(Lcom/kwad/components/core/proxy/a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/launchdialog/c$a;->vG()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l(Lcom/kwad/components/core/proxy/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-interface {v0, p1}, Lcom/kwad/components/core/proxy/launchdialog/f;->l(Lcom/kwad/components/core/proxy/a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/launchdialog/c$a;->vG()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final m(Lcom/kwad/components/core/proxy/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->ajf:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/proxy/launchdialog/c$a;->aje:Lcom/kwad/components/core/proxy/launchdialog/f;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-interface {v0, p1}, Lcom/kwad/components/core/proxy/launchdialog/f;->m(Lcom/kwad/components/core/proxy/a;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/kwad/components/core/proxy/launchdialog/c$a;->vG()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
