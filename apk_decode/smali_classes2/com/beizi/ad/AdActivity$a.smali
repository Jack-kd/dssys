.class Lcom/beizi/ad/AdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/AdActivity;


# direct methods
.method public constructor <init>(Lcom/beizi/ad/AdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/AdActivity$a;->a:Lcom/beizi/ad/AdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x3

    .line 4
    if-eq v1, v2, :cond_1

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    sget-boolean v3, Lcom/beizi/ad/AdActivity;->b:Z

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    sput-boolean v0, Lcom/beizi/ad/AdActivity;->b:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/ad/AdActivity$a;->a:Lcom/beizi/ad/AdActivity;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 18
    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_0
    const-wide/16 v2, 0x1f4

    .line 22
    .line 23
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method
