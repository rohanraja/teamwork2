json.extract! checklistitem, :id, :title, :checklist_id, :created_at, :updated_at
json.url checklistitem_url(checklistitem, format: :json)
