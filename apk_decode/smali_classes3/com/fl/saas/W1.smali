.class public final synthetic Lcom/fl/saas/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/e;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/W1;->b:Lcom/fl/saas/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/W1;->b:Lcom/fl/saas/e;

    invoke-static {v0, p1}, Lcom/fl/saas/e;->l(Lcom/fl/saas/e;Landroid/view/View;)V

    return-void
.end method
