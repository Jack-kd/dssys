.class public Lcom/meishu/sdk/core/utils/t1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/utils/t1;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/ref/SoftReference;

.field public final synthetic b:Lcom/meishu/sdk/core/utils/t1;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/t1;Ljava/lang/ref/SoftReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/t1$a;->b:Lcom/meishu/sdk/core/utils/t1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/utils/t1$a;->a:Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/t1$a;->b:Lcom/meishu/sdk/core/utils/t1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/t1$a;->a:Ljava/lang/ref/SoftReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lcom/meishu/sdk/core/utils/t1;->b:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/t1$a;->b:Lcom/meishu/sdk/core/utils/t1;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/t1$a;->a:Ljava/lang/ref/SoftReference;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lcom/meishu/sdk/core/utils/t1;->c:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/t1$a;->a:Ljava/lang/ref/SoftReference;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/view/View;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/meishu/sdk/core/utils/t1$a;->b:Lcom/meishu/sdk/core/utils/t1;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/meishu/sdk/core/utils/t1;->a:[I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/t1$a;->a:Ljava/lang/ref/SoftReference;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
