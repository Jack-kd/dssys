.class public final Landroidx/browser/customtabs/ContentActionSelectedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/browser/customtabs/ExperimentalCustomContentAction;
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Landroidx/browser/customtabs/ContentActionSelectedData;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/ContentActionSelectedData;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/browser/customtabs/ContentActionSelectedData;-><init>(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public getClickedContentTargetType()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.CLICKED_CONTENT_TARGET_TYPE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getImageAltText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_ALT_TEXT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getImageDataUri()Landroid/net/Uri;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_DATA_URI"

    .line 10
    .line 11
    const-class v2, Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Landroidx/browser/customtabs/a;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/Uri;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_IMAGE_URL"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_LINK_TEXT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.CONTEXT_LINK_URL"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTriggeredActionId()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/ContentActionSelectedData;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "androidx.browser.customtabs.extra.TRIGGERED_CUSTOM_CONTENT_ACTION_ID"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
