ActiveAdmin.register Line do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z
  #
  # or
  #
  # permit_params do
  #   permitted = [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j, :k, :l, :m, :n, :o, :p, :q, :r, :s, :t, :u, :v, :w, :x, :y, :z]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  collection_action :import, method: :get do 
    # render import view
  end

  collection_action :read_file, method: :post do 
    if !params[:file]
      return redirect_back fallback_location: '/admin/lines/import', notice: 'Please upload a file.'
    end
    begin
      if import_file(params[:file])
        redirect_to '/admin/lines', notice: 'Successfully imported data from CSV'
      else
        error = 'The CSV file has too many columns. Please use a file with no more than 26 columns.'
        return redirect_back fallback_location: '/admin/lines/import', notice: error
      end
    rescue
      return redirect_back fallback_location: '/admin/lines/import', notice: 'An error occurred while uploading the file. Please try another file or contact support.'
    end
    
  end

  index do 
    selectable_column
    # id_column
    column :a
    column :b
    column :c
    column :d
    column :e
    column :f
    column :g
    column :h
    column :i
    column :j
    column :k
    column :l
    column :m
    column :n
    column :o
    column :p
    column :q
    column :r
    column :s
    column :t
    column :u
    column :v
    column :w
    column :x
    column :y
    column :z
    actions
  end

  
end

class Admin::LinesController
  require 'csv'
  def import_file(file)
    columns = [*('a'..'z')]
    data = CSV.parse(File.read(file.path))
    data.each do |row|
      if row.length > 26 
        return false
      end
      l_params = {}
      row.each_with_index do |datum, i|
        l_params[columns[i]] = datum
      end
      Line.create(l_params)
      true
    end
  end
end
