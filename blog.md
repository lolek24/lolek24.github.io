---
layout: default
title: Blog
nav_order: 3
---

<!-- Blog Page Header -->
<div class="sap-page-header">
    <div class="sap-avatar">
        <i class="fas fa-pen-nib"></i>
    </div>
    <h1 class="sap-page-title">Blog</h1>
    <p class="sap-page-subtitle" data-i18n="blog.subtitle">Thoughts, insights, and updates from the SAP world</p>
</div>

<!-- Blog Post List -->
<div class="sap-section">
    <h2 class="sap-section-title">
        <i class="fas fa-newspaper"></i>
        <span data-i18n="blog.posts.title">Latest Posts</span>
    </h2>

    {% if site.posts.size > 0 %}
    <div class="sap-blog-list">
        {% for post in site.posts %}
        <div class="sap-blog-card">
            <div>
                <div class="sap-blog-meta">
                    <span class="sap-blog-date">
                        <i class="fas fa-calendar-alt"></i>
                        {{ post.date | date: "%B %-d, %Y" }}
                    </span>
                    {% if post.status == "under-construction" %}
                    <span class="sap-badge-wip" data-i18n="blog.under-construction">Under Construction</span>
                    {% endif %}
                </div>
                <h3 class="sap-blog-title">{{ post.title }}</h3>
                {% if post.description %}
                <p class="sap-blog-excerpt">{{ post.description }}</p>
                {% endif %}
            </div>
            <div class="sap-blog-card-footer">
                <a href="{{ post.url | relative_url }}" class="sap-btn sap-btn-emphasized">
                    <i class="fas fa-arrow-right"></i>
                    <span data-i18n="blog.read-more">Read More</span>
                </a>
            </div>
        </div>
        {% endfor %}
    </div>
    {% else %}
    <p style="text-align:center; color:var(--p-muted); padding:3rem;" data-i18n="blog.no-posts">No posts yet &mdash; check back soon.</p>
    {% endif %}
</div>
