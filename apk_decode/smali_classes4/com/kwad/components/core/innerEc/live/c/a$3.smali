.class final Lcom/kwad/components/core/innerEc/live/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/c/a;->aM(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Xg:Lcom/kwad/components/core/innerEc/live/c/a;

.field final synthetic wc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/c/a$3;->Xg:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/c/a$3;->wc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a$3;->Xg:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/c/a;->a(Lcom/kwad/components/core/innerEc/live/c/a;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/c/a$3;->wc:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ae;->V(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/c/a$3;->Xg:Lcom/kwad/components/core/innerEc/live/c/a;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/c/a;->a(Lcom/kwad/components/core/innerEc/live/c/a;)Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
