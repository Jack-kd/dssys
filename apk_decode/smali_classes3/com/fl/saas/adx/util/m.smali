.class public final synthetic Lcom/fl/saas/adx/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/adx/util/FLImageLoader;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/adx/util/m;->b:Lcom/fl/saas/adx/util/FLImageLoader;

    iput-object p2, p0, Lcom/fl/saas/adx/util/m;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fl/saas/adx/util/m;->b:Lcom/fl/saas/adx/util/FLImageLoader;

    iget-object v1, p0, Lcom/fl/saas/adx/util/m;->c:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/FLImageLoader;->e(Lcom/fl/saas/adx/util/FLImageLoader;Landroid/widget/ImageView;)V

    return-void
.end method
