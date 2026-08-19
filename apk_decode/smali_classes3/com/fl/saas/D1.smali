.class public final synthetic Lcom/fl/saas/D1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/fl/saas/Q0;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/Q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/D1;->b:Lcom/fl/saas/Q0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/D1;->b:Lcom/fl/saas/Q0;

    invoke-static {v0, p1}, Lcom/fl/saas/Q0;->i(Lcom/fl/saas/Q0;Landroid/view/View;)V

    return-void
.end method
