.class Lcom/beizi/fusion/dj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/dj;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/fusion/dj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/dj;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/dj$b;->b:Lcom/beizi/fusion/dj;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/dj$b;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/dj$b;->b:Lcom/beizi/fusion/dj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/dj;->a(Lcom/beizi/fusion/dj;)Lcom/beizi/fusion/ej;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/beizi/fusion/dj$b;->a:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/beizi/fusion/ej;->onAdFailedToLoad(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
