.class public Lcom/baidu/oauth/sdkbqt/view/g;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/sdkbqt/view/g$a;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/ListView;

.field public c:Lcom/baidu/oauth/sdkbqt/view/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/baidu/oauth/sdkbqt/view/g;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic a(Lcom/baidu/oauth/sdkbqt/view/g;)Lcom/baidu/oauth/sdkbqt/view/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/oauth/sdkbqt/view/g;->c:Lcom/baidu/oauth/sdkbqt/view/i;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/baidu/oauth/sdkbqt/view/i;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/baidu/oauth/sdkbqt/view/i;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/g;->c:Lcom/baidu/oauth/sdkbqt/view/i;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget v0, Lcom/baidu/oauth/sdkbqt/R$color;->bd_oauth_sdk_transparent:I

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 11
    .line 12
    .line 13
    sget p1, Lcom/baidu/oauth/sdkbqt/R$layout;->layout_bd_oauth_sdk_dialog_list:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    sget p1, Lcom/baidu/oauth/sdkbqt/R$id;->sapi_dialog_list_container:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/ListView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/g;->b:Landroid/widget/ListView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/baidu/oauth/sdkbqt/view/g;->c:Lcom/baidu/oauth/sdkbqt/view/i;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/g;->b:Landroid/widget/ListView;

    .line 34
    .line 35
    new-instance v0, Lcom/baidu/oauth/sdkbqt/view/b;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/baidu/oauth/sdkbqt/view/b;-><init>(Lcom/baidu/oauth/sdkbqt/view/g;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, -0x1

    .line 52
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 53
    .line 54
    const v0, 0x3dcccccd    # 0.1f

    .line 55
    .line 56
    .line 57
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 58
    .line 59
    const/4 v0, -0x2

    .line 60
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget v0, Lcom/baidu/oauth/sdkbqt/R$color;->bd_oauth_sdk_transparent:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
