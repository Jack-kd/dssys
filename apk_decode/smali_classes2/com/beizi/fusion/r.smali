.class public final synthetic Lcom/beizi/fusion/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/r;->b:Landroid/view/View;

    iput p2, p0, Lcom/beizi/fusion/r;->c:I

    iput-wide p3, p0, Lcom/beizi/fusion/r;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/r;->b:Landroid/view/View;

    iget v1, p0, Lcom/beizi/fusion/r;->c:I

    iget-wide v2, p0, Lcom/beizi/fusion/r;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/beizi/fusion/cq;->c(Landroid/view/View;IJ)V

    return-void
.end method
