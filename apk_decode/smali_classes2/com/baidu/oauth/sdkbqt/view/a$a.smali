.class public Lcom/baidu/oauth/sdkbqt/view/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/sdkbqt/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/baidu/oauth/sdkbqt/view/a;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/sdkbqt/view/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/a$a;->b:Lcom/baidu/oauth/sdkbqt/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/oauth/sdkbqt/view/a;Lt/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/baidu/oauth/sdkbqt/view/a$a;-><init>(Lcom/baidu/oauth/sdkbqt/view/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/baidu/oauth/sdkbqt/view/a$a;->b:Lcom/baidu/oauth/sdkbqt/view/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/baidu/oauth/sdkbqt/view/a;->d:Lcom/baidu/oauth/sdkbqt/auth/i;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/baidu/oauth/sdkbqt/auth/i;->q()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
