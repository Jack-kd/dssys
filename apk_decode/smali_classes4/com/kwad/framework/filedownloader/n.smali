.class public final Lcom/kwad/framework/filedownloader/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/n$a;
    }
.end annotation


# instance fields
.field private final azY:Lcom/kwad/framework/filedownloader/u;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/kwad/framework/filedownloader/f/e;->Dz()Lcom/kwad/framework/filedownloader/f/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwad/framework/filedownloader/f/e;->aDv:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/kwad/framework/filedownloader/o;

    invoke-direct {v0}, Lcom/kwad/framework/filedownloader/o;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/kwad/framework/filedownloader/p;

    const-class v1, Lcom/kwad/sdk/api/proxy/app/FileDownloadService$SeparateProcessService;

    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/p;-><init>(Ljava/lang/Class;)V

    :goto_0
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/framework/filedownloader/n;-><init>()V

    return-void
.end method

.method public static By()Lcom/kwad/framework/filedownloader/n;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/n$a;->BA()Lcom/kwad/framework/filedownloader/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Bz()Lcom/kwad/framework/filedownloader/services/e$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/kwad/framework/filedownloader/o;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/kwad/framework/filedownloader/n;->By()Lcom/kwad/framework/filedownloader/n;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 16
    .line 17
    check-cast v0, Lcom/kwad/framework/filedownloader/services/e$a;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwad/framework/filedownloader/d/b;Z)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move/from16 v6, p6

    .line 9
    .line 10
    move/from16 v7, p7

    .line 11
    .line 12
    move-object/from16 v8, p8

    .line 13
    .line 14
    move/from16 v9, p9

    .line 15
    .line 16
    invoke-interface/range {v0 .. v9}, Lcom/kwad/framework/filedownloader/u;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwad/framework/filedownloader/d/b;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public final aW(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/u;->aW(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final cv(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/u;->cv(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final cw(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/u;->cw(I)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final cx(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/kwad/framework/filedownloader/u;->cx(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/n;->azY:Lcom/kwad/framework/filedownloader/u;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/u;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
