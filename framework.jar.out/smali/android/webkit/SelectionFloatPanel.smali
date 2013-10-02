.class public Landroid/webkit/SelectionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "SelectionFloatPanel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/webkit/SelectionFloatPanel;
    .locals 11
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v8, 0x0

    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x6030037

    invoke-virtual {v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/SelectionFloatPanel;

    .line 27
    .local v0, instance:Landroid/webkit/SelectionFloatPanel;
    new-instance v1, Landroid/webkit/SelectionFloatPanel$1;

    invoke-direct {v1, p1, v0}, Landroid/webkit/SelectionFloatPanel$1;-><init>(Landroid/webkit/WebView;Landroid/webkit/SelectionFloatPanel;)V

    .line 36
    .local v1, l:Landroid/view/View$OnClickListener;
    const v9, 0x60b0015

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 37
    .local v4, vCopy:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v3, Landroid/webkit/SelectionFloatPanel$2;

    invoke-direct {v3, p1, v0}, Landroid/webkit/SelectionFloatPanel$2;-><init>(Landroid/webkit/WebView;Landroid/webkit/SelectionFloatPanel;)V

    .line 52
    .local v3, selectAllListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b001a

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 53
    .local v5, vSelectAll:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v7, Landroid/webkit/SelectionFloatPanel$3;

    invoke-direct {v7, p1, v0}, Landroid/webkit/SelectionFloatPanel$3;-><init>(Landroid/webkit/WebView;Landroid/webkit/SelectionFloatPanel;)V

    .line 68
    .local v7, webSearchListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b0024

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, vWebSearch:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 70
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Landroid/view/ViewGroup;

    .line 77
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    .end local v0           #instance:Landroid/webkit/SelectionFloatPanel;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    .end local v3           #selectAllListener:Landroid/view/View$OnClickListener;
    .end local v5           #vSelectAll:Landroid/view/View;
    .end local v6           #vWebSearch:Landroid/view/View;
    .end local v7           #webSearchListener:Landroid/view/View$OnClickListener;
    :goto_0
    return-object v0

    .line 40
    .restart local v0       #instance:Landroid/webkit/SelectionFloatPanel;
    :cond_0
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no copy view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 41
    goto :goto_0

    .line 56
    .restart local v3       #selectAllListener:Landroid/view/View$OnClickListener;
    .restart local v5       #vSelectAll:Landroid/view/View;
    :cond_1
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no selectAll view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 57
    goto :goto_0

    .line 72
    .restart local v6       #vWebSearch:Landroid/view/View;
    .restart local v7       #webSearchListener:Landroid/view/View$OnClickListener;
    :cond_2
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no webSearch view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 73
    goto :goto_0
.end method


# virtual methods
.method public showAt(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 84
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Landroid/webkit/SelectionFloatPanel;->setX(F)V

    .line 85
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/webkit/SelectionFloatPanel;->setY(F)V

    .line 86
    invoke-virtual {p0}, Landroid/webkit/SelectionFloatPanel;->requestLayout()V

    .line 87
    return-void
.end method
