.class Lcom/beizi/fusion/aj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/aj;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/fusion/aj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/aj;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/aj$b;->b:Lcom/beizi/fusion/aj;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/aj$b;->a:I

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
    iget-object v0, p0, Lcom/beizi/fusion/aj$b;->b:Lcom/beizi/fusion/aj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/aj;->a(Lcom/beizi/fusion/aj;)Lcom/beizi/fusion/p1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/beizi/fusion/aj$b;->a:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/p1;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
